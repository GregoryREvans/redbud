import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'rhythm_handler_one',
            abjad.OrderedDict(
                [
                    ('state', 0),
                    ]
                ),
            ),
        (
            'rhythm_handler_two',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 33),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 34),
                                ('talea_weight_consumed', 133),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )