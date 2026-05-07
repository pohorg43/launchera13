.class public final Lcom/oplus/smartsdk/SmartApiInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
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

.field private final name:Ljava/lang/String;

.field private final themeId:Ljava/lang/Integer;

.field private final value:[B

.field private final version:Ljava/lang/Long;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[BZ)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    iput-object p2, p0, Lcom/oplus/smartsdk/SmartApiInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/smartsdk/SmartApiInfo;->version:Ljava/lang/Long;

    iput-object p4, p0, Lcom/oplus/smartsdk/SmartApiInfo;->themeId:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/oplus/smartsdk/SmartApiInfo;->idMaps:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/oplus/smartsdk/SmartApiInfo;->value:[B

    iput-boolean p7, p0, Lcom/oplus/smartsdk/SmartApiInfo;->forceChangeCardUI:Z

    return-void
.end method

.method public synthetic constructor <init>([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, p2

    :goto_8
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_e

    move-object v2, v1

    goto :goto_f

    :cond_e
    move-object v2, p3

    :goto_f
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_15

    move-object v3, v1

    goto :goto_16

    :cond_15
    move-object v3, p4

    :goto_16
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_1c

    move-object v4, v1

    goto :goto_1d

    :cond_1c
    move-object v4, p5

    :goto_1d
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_22

    goto :goto_23

    :cond_22
    move-object v1, p6

    :goto_23
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    goto :goto_2a

    :cond_29
    move v5, p7

    :goto_2a
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v1

    move p9, v5

    invoke-direct/range {p2 .. p9}, Lcom/oplus/smartsdk/SmartApiInfo;-><init>([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/smartsdk/SmartApiInfo;[BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZILjava/lang/Object;)Lcom/oplus/smartsdk/SmartApiInfo;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/oplus/smartsdk/SmartApiInfo;->name:Ljava/lang/String;

    :cond_c
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/oplus/smartsdk/SmartApiInfo;->version:Ljava/lang/Long;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/oplus/smartsdk/SmartApiInfo;->themeId:Ljava/lang/Integer;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/oplus/smartsdk/SmartApiInfo;->idMaps:Ljava/util/HashMap;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/oplus/smartsdk/SmartApiInfo;->value:[B

    :cond_28
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-boolean p7, p0, Lcom/oplus/smartsdk/SmartApiInfo;->forceChangeCardUI:Z

    :cond_2f
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/oplus/smartsdk/SmartApiInfo;->copy([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZ)Lcom/oplus/smartsdk/SmartApiInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->themeId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/util/HashMap;
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

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->idMaps:Ljava/util/HashMap;

    return-object p0
.end method

.method public final component6()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->value:[B

    return-object p0
.end method

.method public final component7()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->forceChangeCardUI:Z

    return p0
.end method

.method public final copy([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZ)Lcom/oplus/smartsdk/SmartApiInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[BZ)",
            "Lcom/oplus/smartsdk/SmartApiInfo;"
        }
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/smartsdk/SmartApiInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oplus/smartsdk/SmartApiInfo;-><init>([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lcom/oplus/smartsdk/SmartApiInfo;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    return v2

    :cond_17
    const-string v1, "null cannot be cast to non-null type com.oplus.smartsdk.SmartApiInfo"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/oplus/smartsdk/SmartApiInfo;

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    iget-object p1, p1, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getData()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    return-object p0
.end method

.method public final getForceChangeCardUI()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->forceChangeCardUI:Z

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

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->idMaps:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getThemeId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->themeId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getValue()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->value:[B

    return-object p0
.end method

.method public final getVersion()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SmartApiInfo(data="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->version:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", themeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->themeId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idMaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->idMaps:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/SmartApiInfo;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", forceChangeCardUI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/smartsdk/SmartApiInfo;->forceChangeCardUI:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
