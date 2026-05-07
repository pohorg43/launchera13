.class public final Lcom/oplus/quickstep/utils/TranslationYProperty;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/TranslationYProperty$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/quickstep/AnimatedFloat;",
        ">",
        "Landroid/util/FloatProperty<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/TranslationYProperty$Companion;

.field private static final DEFAULT_COEFFICIENT:I = 0xc

.field private static final FLIP_COEFFICIENT:I = 0xe

.field private static final FOLD_FOLDED_COEFFICIENT:I = 0x1e

.field private static final NEW_COEFFICIENT:I = 0x12

.field private static final TAG:Ljava/lang/String; = "TranslationYProperty"


# instance fields
.field private baseCoefficient:I

.field private baseTranslationY:I

.field private draggingHeight:I

.field private goingToRecents:Z

.field private ignoreTranslate:Z

.field private final lastProgressAndValue:[F

.field private maxProgress:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/TranslationYProperty$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/TranslationYProperty$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/TranslationYProperty;->Companion:Lcom/oplus/quickstep/utils/TranslationYProperty$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->calculateBaseCoefficient()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->baseCoefficient:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->lastProgressAndValue:[F

    const p1, 0x3fd9999a  # 1.7f

    iput p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->maxProgress:F

    return-void
.end method

.method private final calculateBaseCoefficient()I
    .registers 2

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0xc

    goto :goto_1f

    :cond_b
    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0xe

    goto :goto_1f

    :cond_14
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/16 p0, 0x1e

    goto :goto_1f

    :cond_1d
    const/16 p0, 0x12

    :goto_1f
    return p0
.end method


# virtual methods
.method public get(Lcom/android/quickstep/AnimatedFloat;)Ljava/lang/Float;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    const-string p0, "obj"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->get(Lcom/android/quickstep/AnimatedFloat;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getDraggingHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->draggingHeight:I

    return p0
.end method

.method public final getGoingToRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->goingToRecents:Z

    return p0
.end method

.method public final getIgnoreTranslate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->ignoreTranslate:Z

    return p0
.end method

.method public final getMaxProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->maxProgress:F

    return p0
.end method

.method public final recalculateBaseCoefficient()V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->baseCoefficient:I

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->calculateBaseCoefficient()I

    move-result v1

    iput v1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->baseCoefficient:I

    const-string v1, "recalculateBaseCoefficient: old = "

    const-string v2, ", baseCoefficient = "

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->baseCoefficient:I

    const-string v1, "QuickStep"

    const-string v2, "TranslationYProperty"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reset()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->goingToRecents:Z

    iget-object p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->lastProgressAndValue:[F

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    return-void
.end method

.method public final setDraggingHeight(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->draggingHeight:I

    iget v0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->baseCoefficient:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->baseTranslationY:I

    return-void
.end method

.method public final setGoingToRecents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->goingToRecents:Z

    return-void
.end method

.method public final setIgnoreTranslate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->ignoreTranslate:Z

    return-void
.end method

.method public final setMaxProgress(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->maxProgress:F

    return-void
.end method

.method public setValue(Lcom/android/quickstep/AnimatedFloat;F)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->ignoreTranslate:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->goingToRecents:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->lastProgressAndValue:[F

    aget v0, p0, v2

    aget p0, p0, v1

    int-to-float v1, v2

    sub-float/2addr p0, v1

    div-float/2addr v0, p0

    sub-float/2addr p2, v1

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void

    :cond_1f
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd  # 0.2f

    const v4, 0x3d23d70a  # 0.04f

    const/high16 v5, 0x3e800000  # 0.25f

    const v6, 0x3e19999a  # 0.15f

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget v3, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->maxProgress:F

    div-float v3, p2, v3

    invoke-virtual {v0, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iget v3, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->maxProgress:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->baseTranslationY:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/TranslationYProperty;->lastProgressAndValue:[F

    aput p2, p0, v1

    aput v0, p0, v2

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setValue(Lcom/android/quickstep/AnimatedFloat;F)V

    return-void
.end method
