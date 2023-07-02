CREATE TABLE public.test_table (
	id bigserial NOT NULL,
    "data" text,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO public.test_table ("data") VALUES ('test 1');
INSERT INTO public.test_table ("data") VALUES ('test 2');
INSERT INTO public.test_table ("data") VALUES ('test 3');
INSERT INTO public.test_table ("data") VALUES ('test 4');
INSERT INTO public.test_table ("data") VALUES ('test 5');
INSERT INTO public.test_table ("data") VALUES ('test 6');
INSERT INTO public.test_table ("data") VALUES ('test 7');
INSERT INTO public.test_table ("data") VALUES ('test 8');
INSERT INTO public.test_table ("data") VALUES ('test 9');
INSERT INTO public.test_table ("data") VALUES ('test 10');
