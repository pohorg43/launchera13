.class public final Lcom/oplus/card/manager/domain/model/UIData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/UIData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/manager/domain/model/UIData$Companion;

.field public static final TAG:Ljava/lang/String; = "UIData"


# instance fields
.field private final cardId:J

.field private cardType:I

.field private final data:[B

.field private final forceChangeCardUI:Z

.field private final idMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final themeId:Ljava/lang/Integer;

.field private final value:[B

.field private final version:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/manager/domain/model/UIData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/domain/model/UIData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/UIData;->Companion:Lcom/oplus/card/manager/domain/model/UIData$Companion;

    return-void
.end method

.method public constructor <init>([BJILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "[BZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutName"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/UIData;->data:[B

    iput-wide p2, p0, Lcom/oplus/card/manager/domain/model/UIData;->cardId:J

    iput p4, p0, Lcom/oplus/card/manager/domain/model/UIData;->cardType:I

    iput-object p5, p0, Lcom/oplus/card/manager/domain/model/UIData;->idMaps:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/oplus/card/manager/domain/model/UIData;->name:Ljava/lang/String;

    iput-object p7, p0, Lcom/oplus/card/manager/domain/model/UIData;->version:Ljava/lang/Long;

    iput-object p8, p0, Lcom/oplus/card/manager/domain/model/UIData;->themeId:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/oplus/card/manager/domain/model/UIData;->value:[B

    iput-boolean p10, p0, Lcom/oplus/card/manager/domain/model/UIData;->forceChangeCardUI:Z

    iput-object p11, p0, Lcom/oplus/card/manager/domain/model/UIData;->layoutName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([BJILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v8, v2

    goto :goto_b

    :cond_9
    move-object/from16 v8, p5

    :goto_b
    and-int/lit8 v1, v0, 0x10

    const-string v3, ""

    if-eqz v1, :cond_13

    move-object v9, v3

    goto :goto_15

    :cond_13
    move-object/from16 v9, p6

    :goto_15
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_21

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v10, v1

    goto :goto_23

    :cond_21
    move-object/from16 v10, p7

    :goto_23
    and-int/lit8 v1, v0, 0x40

    const/4 v4, 0x0

    if-eqz v1, :cond_2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v11, v1

    goto :goto_30

    :cond_2e
    move-object/from16 v11, p8

    :goto_30
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_36

    move-object v12, v2

    goto :goto_38

    :cond_36
    move-object/from16 v12, p9

    :goto_38
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3e

    move v13, v4

    goto :goto_40

    :cond_3e
    move/from16 v13, p10

    :goto_40
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_46

    move-object v14, v3

    goto :goto_48

    :cond_46
    move-object/from16 v14, p11

    :goto_48
    move-object v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    invoke-direct/range {v3 .. v14}, Lcom/oplus/card/manager/domain/model/UIData;-><init>([BJILjava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;[BZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Lcom/oplus/card/manager/domain/model/UIData;

    if-eqz v0, :cond_42

    move-object v0, p1

    check-cast v0, Lcom/oplus/card/manager/domain/model/UIData;

    iget-object v1, v0, Lcom/oplus/card/manager/domain/model/UIData;->data:[B

    iget-object v2, p0, Lcom/oplus/card/manager/domain/model/UIData;->data:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-wide v1, v0, Lcom/oplus/card/manager/domain/model/UIData;->cardId:J

    iget-wide v3, p0, Lcom/oplus/card/manager/domain/model/UIData;->cardId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_40

    iget-boolean v1, v0, Lcom/oplus/card/manager/domain/model/UIData;->forceChangeCardUI:Z

    iget-boolean v2, p0, Lcom/oplus/card/manager/domain/model/UIData;->forceChangeCardUI:Z

    if-ne v1, v2, :cond_40

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/UIData;->value:[B

    if-nez v1, :cond_25

    const/4 v0, 0x0

    goto :goto_31

    :cond_25
    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/UIData;->getValue()[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_31
    if-nez v0, :cond_38

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3c

    :cond_38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_3c
    if-eqz p0, :cond_40

    const/4 p0, 0x1

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    return p0

    :cond_42
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getCardId()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/card/manager/domain/model/UIData;->cardId:J

    return-wide v0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->cardType:I

    return p0
.end method

.method public final getData()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->data:[B

    return-object p0
.end method

.method public final getForceChangeCardUI()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->forceChangeCardUI:Z

    return p0
.end method

.method public final getIdMaps()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->idMaps:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getLayoutName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->layoutName:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getThemeId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->themeId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getValue()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->value:[B

    return-object p0
.end method

.method public final getVersion()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/UIData;->data:[B

    invoke-virtual {p0}, [B->hashCode()I

    move-result p0

    return p0
.end method

.method public final setCardType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/manager/domain/model/UIData;->cardType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
