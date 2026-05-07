.class public final Lcom/oplus/quickstep/utils/RoundCornerLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

.field private static final ROUND_CORNER_PROPERTY:Ljava/lang/String; = "ro.display.rc.size"

.field private static final ROUND_CORNER_PROPERTY_OPLUS:Ljava/lang/String; = "ro.oplus.display.rc.size"

.field private static final ROUND_CORNER_PROPERTY_SPLITTER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "RoundCornerLoader"


# instance fields
.field private cornerScale:F

.field private defaultScreenRoundCornerRadiusPx:I

.field private final screenCornerRadiusFraction:F

.field private screenRoundCornerRadiusPx:I

.field private splitScreenWindowRoundCornerRadiusPx:I

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    const v1, 0x3db33333  # 0.0875f

    iput v1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenCornerRadiusFraction:F

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->cornerScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b83

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final readCornerRadiusFromProperty()I
    .registers 8

    const-string p0, "ro.display.rc.size"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RoundCornerLoader"

    const-string v2, "QuickStep"

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    const-string p0, "ro.oplus.display.rc.size"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "Radius property is empty"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_23
    const-string v0, "radiusProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    invoke-static {p0, v0, v3, v3, v4}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    :try_start_40
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const v4, 0x7fffffff

    if-ltz v0, :cond_59

    move v5, v3

    :goto_49
    add-int/lit8 v6, v5, 0x1

    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_51} :catch_5f

    if-ge v5, v4, :cond_54

    move v4, v5

    :cond_54
    if-le v6, v0, :cond_57

    goto :goto_59

    :cond_57
    move v5, v6

    goto :goto_49

    :cond_59
    :goto_59
    const-string p0, "Radius property is "

    invoke-static {v4, p0, v2, v1}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_5f
    move-exception p0

    const-string v0, "getRoundCornerRadius e: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private final updateScaleRatioIfNeeded(I)I
    .registers 5

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isSupportResolutionSwitch:Z

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->width:I

    sget v2, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    if-eq v1, v2, :cond_34

    iput v2, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->width:I

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->width:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p1, p1

    const-string p0, "updatedCornerRadius: "

    const-string v0, "QuickStep"

    const-string v1, "RoundCornerLoader"

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return p1
.end method


# virtual methods
.method public final getDefaultScreenRoundCornerRadiusPx()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    return p0
.end method

.method public final getScreenCornerRadiusFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenCornerRadiusFraction:F

    return p0
.end method

.method public final getScreenRoundCornerRadiusPx()I
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->readCornerRadiusFromProperty()I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    :cond_b
    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->updateScaleRatioIfNeeded(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    int-to-float v0, v0

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->cornerScale:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public final getSplitScreenWindowRoundCornerRadiusPx()I
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    :cond_9
    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    return p0
.end method

.method public final setDefaultScreenRoundCornerRadiusPx(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "screenRoundCornerRadiusPx = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenCornerRadiusFraction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenCornerRadiusFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cornerScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->cornerScale:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
