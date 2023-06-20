import { redirect } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';
import { AppRoute } from '$lib/constants';

export const load = (async ({ locals, parent, params }) => {
	const { user } = await parent();
	if (!user) {
		throw redirect(302, AppRoute.AUTH_LOGIN);
	}

	const { data: person } = await locals.api.personApi.getPerson({ id: params.personId });
	const { data: assets } = await locals.api.personApi.getPersonAssets({ id: params.personId });

	return {
		user,
		assets,
		person,
		meta: {
			title: person.name || 'Person'
		}
	};
}) satisfies PageServerLoad;