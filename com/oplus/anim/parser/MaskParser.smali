.class Lcom/oplus/anim/parser/MaskParser;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/Mask;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_8
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d4

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v6, :sswitch_data_de

    :goto_20
    move v6, v10

    goto :goto_4d

    :sswitch_22
    const-string v6, "mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_20

    :cond_2b
    move v6, v7

    goto :goto_4d

    :sswitch_2d
    const-string v6, "inv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_20

    :cond_36
    move v6, v8

    goto :goto_4d

    :sswitch_38
    const-string v6, "pt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto :goto_20

    :cond_41
    move v6, v9

    goto :goto_4d

    :sswitch_43
    const-string v6, "o"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_20

    :cond_4c
    move v6, v0

    :goto_4d
    packed-switch v6, :pswitch_data_f0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_8

    :pswitch_54  #0x3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_fc

    :goto_62
    move v7, v10

    goto :goto_8d

    :sswitch_64
    const-string v6, "s"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    goto :goto_62

    :sswitch_6d
    const-string v6, "n"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    goto :goto_62

    :cond_76
    move v7, v8

    goto :goto_8d

    :sswitch_78
    const-string v6, "i"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    goto :goto_62

    :cond_81
    move v7, v9

    goto :goto_8d

    :sswitch_83
    const-string v6, "a"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    goto :goto_62

    :cond_8c
    move v7, v0

    :cond_8d
    :goto_8d
    packed-switch v7, :pswitch_data_10e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown mask mode "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Defaulting to Add."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/oplus/anim/model/content/Mask$MaskMode;

    goto/16 :goto_8

    :pswitch_ad  #0x3
    sget-object v1, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/oplus/anim/model/content/Mask$MaskMode;

    goto/16 :goto_8

    :pswitch_b1  #0x2
    sget-object v1, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/oplus/anim/model/content/Mask$MaskMode;

    goto/16 :goto_8

    :pswitch_b5  #0x1
    const-string v1, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {p1, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/oplus/anim/model/content/Mask$MaskMode;

    goto/16 :goto_8

    :pswitch_be  #0x0
    sget-object v1, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/oplus/anim/model/content/Mask$MaskMode;

    goto/16 :goto_8

    :pswitch_c2  #0x2
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v4

    goto/16 :goto_8

    :pswitch_c8  #0x1
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseShapeData(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_ce  #0x0
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v3

    goto/16 :goto_8

    :cond_d4
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    new-instance p0, Lcom/oplus/anim/model/content/Mask;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oplus/anim/model/content/Mask;-><init>(Lcom/oplus/anim/model/content/Mask$MaskMode;Lcom/oplus/anim/model/animatable/AnimatableShapeValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Z)V

    return-object p0

    nop

    :sswitch_data_de
    .sparse-switch
        0x6f -> :sswitch_43
        0xe04 -> :sswitch_38
        0x197f1 -> :sswitch_2d
        0x3339a3 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_ce  #00000000
        :pswitch_c8  #00000001
        :pswitch_c2  #00000002
        :pswitch_54  #00000003
    .end packed-switch

    :sswitch_data_fc
    .sparse-switch
        0x61 -> :sswitch_83
        0x69 -> :sswitch_78
        0x6e -> :sswitch_6d
        0x73 -> :sswitch_64
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_be  #00000000
        :pswitch_b5  #00000001
        :pswitch_b1  #00000002
        :pswitch_ad  #00000003
    .end packed-switch
.end method
