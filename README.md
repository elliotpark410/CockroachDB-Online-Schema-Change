# CockroachDB-Online-Schema-Change
This is a copy of the [drk repo](https://github.com/codingconcepts/drk?tab=readme-ov-file) with slight changes to the ecommerce_example so it works with my existing data model. The application provides read and write loads so I can demo CockroachDB's ability to do online schema changes while queries are being executed.


# drk
[wrk](https://github.com/wg/wrk) but for databases and pronounced [/dɜːk/](https://dictionary.cambridge.org/pronunciation/english/dirk).

Cluster

```sh
cockroach demo --insecure --no-example-database
```

### Examples

Run the e-Commerce example

```sh
make ecommerce_example
```

Run the payments example

```sh
make payments_example
```

### Todos

* Support bulk activities (e.g. insert 1,000 instead of just 1)
* Configure a workflow query for the exec type to test it
* Add the ability to ensure uniqueness across two arg values (re-running until unique, or crashing after X attempts)
* Update ref to allow more than one item to be seleted (e.g. add multiple products to a basket)
* Optionally pass args in workflow queries
* Ramp VU's up and down

