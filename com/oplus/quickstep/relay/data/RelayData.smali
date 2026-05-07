.class public final Lcom/oplus/quickstep/relay/data/RelayData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private volatile bitmapInvalid:Z

.field private final iconUrl:Ljava/lang/String;

.field private final intent:Landroid/content/Intent;

.field private final mCallingPackage:Ljava/lang/String;

.field private final startType:Ljava/lang/String;

.field private final subIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7

    const-string v0, "mCallingPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->mCallingPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/quickstep/relay/data/RelayData;->intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    const/high16 p0, 0x10000000

    invoke-virtual {p4, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$getMCallingPackage$p(Lcom/oplus/quickstep/relay/data/RelayData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method private final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/oplus/quickstep/relay/data/RelayData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/quickstep/relay/data/RelayData;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->mCallingPackage:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/oplus/quickstep/relay/data/RelayData;->intent:Landroid/content/Intent;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/oplus/quickstep/relay/data/RelayData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Lcom/oplus/quickstep/relay/data/RelayData;
    .registers 12

    const-string p0, "mCallingPackage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "iconUrl"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "startType"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/relay/data/RelayData;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/relay/data/RelayData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/quickstep/relay/data/RelayData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/quickstep/relay/data/RelayData;

    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->mCallingPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/quickstep/relay/data/RelayData;->mCallingPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/oplus/quickstep/relay/data/RelayData;->intent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final generateIcon(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb3/d<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lq3/q0;->c:Lq3/b0;

    new-instance v1, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/oplus/quickstep/relay/data/RelayData$generateIcon$2;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/relay/data/RelayData;Lb3/d;)V

    invoke-static {v0, v1, p2}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getBitmapInvalid()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->bitmapInvalid:Z

    return p0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getStartType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubIconUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final iconChanged(Lcom/oplus/quickstep/relay/data/RelayData;)Z
    .registers 4

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/oplus/quickstep/relay/data/RelayData;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x1

    :goto_27
    return p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setBitmapInvalid(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->bitmapInvalid:Z

    return-void
.end method

.method public final start(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "RelayData"

    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/data/RelayData;->getStartType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/data/RelayData;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    goto :goto_3b

    :cond_1d
    const-string v2, "startService"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/data/RelayData;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_3b

    :cond_2e
    const-string p0, "start(), unknown type."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_36

    goto :goto_3b

    :catchall_36
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3b
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_42

    goto :goto_4b

    :cond_42
    const-string p1, "onClick(), start failed, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "[icon="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->subIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", invalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/relay/data/RelayData;->bitmapInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayData;->startType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
