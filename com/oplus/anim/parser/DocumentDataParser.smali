.class public Lcom/oplus/anim/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/parser/ValueParser<",
        "Lcom/oplus/anim/model/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/anim/parser/DocumentDataParser;

.field private static final NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/oplus/anim/parser/DocumentDataParser;

    invoke-direct {v0}, Lcom/oplus/anim/parser/DocumentDataParser;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/DocumentDataParser;->INSTANCE:Lcom/oplus/anim/parser/DocumentDataParser;

    const-string v1, "t"

    const-string v2, "f"

    const-string v3, "s"

    const-string v4, "j"

    const-string v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string v9, "sc"

    const-string v10, "sw"

    const-string v11, "of"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/DocumentDataParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Lcom/oplus/anim/model/DocumentData;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oplus/anim/model/DocumentData$Justification;->CENTER:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v9, v0

    move-object v6, v1

    move-object v7, v6

    move v10, v2

    move v13, v10

    move v14, v13

    move v8, v3

    move v11, v8

    move v12, v11

    move v15, v12

    move/from16 v16, v4

    :cond_15
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lcom/oplus/anim/parser/DocumentDataParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v0

    packed-switch v0, :pswitch_data_86

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_15

    :pswitch_2d  #0xa
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v16

    goto :goto_15

    :pswitch_32  #0x9
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v15, v2

    goto :goto_15

    :pswitch_38  #0x8
    invoke-static/range {p1 .. p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonToColor(Lcom/oplus/anim/parser/moshi/JsonReader;)I

    move-result v14

    goto :goto_15

    :pswitch_3d  #0x7
    invoke-static/range {p1 .. p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonToColor(Lcom/oplus/anim/parser/moshi/JsonReader;)I

    move-result v13

    goto :goto_15

    :pswitch_42  #0x6
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v12, v2

    goto :goto_15

    :pswitch_48  #0x5
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v11, v2

    goto :goto_15

    :pswitch_4e  #0x4
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v10

    goto :goto_15

    :pswitch_53  #0x3
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v0

    sget-object v9, Lcom/oplus/anim/model/DocumentData$Justification;->CENTER:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_15

    if-gez v0, :cond_62

    goto :goto_15

    :cond_62
    invoke-static {}, Lcom/oplus/anim/model/DocumentData$Justification;->values()[Lcom/oplus/anim/model/DocumentData$Justification;

    move-result-object v2

    aget-object v9, v2, v0

    goto :goto_15

    :pswitch_69  #0x2
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v8, v2

    goto :goto_15

    :pswitch_6f  #0x1
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_15

    :pswitch_74  #0x0
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_15

    :cond_79
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    new-instance v0, Lcom/oplus/anim/model/DocumentData;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/oplus/anim/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/oplus/anim/model/DocumentData$Justification;IFFIIFZ)V

    return-object v0

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_74  #00000000
        :pswitch_6f  #00000001
        :pswitch_69  #00000002
        :pswitch_53  #00000003
        :pswitch_4e  #00000004
        :pswitch_48  #00000005
        :pswitch_42  #00000006
        :pswitch_3d  #00000007
        :pswitch_38  #00000008
        :pswitch_32  #00000009
        :pswitch_2d  #0000000a
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/parser/DocumentDataParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Lcom/oplus/anim/model/DocumentData;

    move-result-object p0

    return-object p0
.end method
