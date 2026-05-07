.class public final Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;
    }
.end annotation


# static fields
.field private static final BG_HEIGHT_FACTOR:F = 1.37f

.field private static final BG_WIDTH_FACTOR:F = 2.71f

.field public static final Companion:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;

.field private static final DAMPING_RATIO:F = 0.74f

.field private static final STIFFNESS:F = 200.0f

.field private static final TRANS_Y:F = 174.0f


# instance fields
.field private mEndBgHeight:I

.field private mEndBgWidth:I

.field private mEndTransY:F

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStartBgHeight:F

.field private mStartBgWidth:F

.field private mStartTransY:F

.field private mView:Lcom/android/launcher3/search/SearchEntryView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->Companion:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/search/SearchEntryView;)V
    .registers 4

    const-string v0, "mView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mView:Lcom/android/launcher3/search/SearchEntryView;

    const/high16 v0, -0x3cd20000  # -174.0f

    iput v0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mStartTransY:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x402d70a4  # 2.71f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mStartBgWidth:F

    iget-object p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mEndBgWidth:I

    iget-object p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3faf5c29  # 1.37f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mStartBgHeight:F

    iget-object p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mEndBgHeight:I

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$mSpringAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$mSpringAnimation$1;-><init>(Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;)V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {p1, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f3d70a4  # 0.74f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000  # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3b800000  # 0.00390625f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iput-object p1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public static final synthetic access$onUpdate(Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->onUpdate(F)V

    return-void
.end method

.method public static final isDockSearch(Lcom/android/quickstep/views/TaskView;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->Companion:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;->isDockSearch(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    return p0
.end method

.method private final onUpdate(F)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mStartBgWidth:F

    iget v1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mEndBgWidth:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/search/SearchEntryView;->setTempBgWidth(F)V

    iget v0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mStartBgHeight:F

    iget v1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mEndBgHeight:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/search/SearchEntryView;->setTempBgHeight(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mView:Lcom/android/launcher3/search/SearchEntryView;

    iget v1, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mStartTransY:F

    iget p0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mEndTransY:F

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final end()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    return-void
.end method

.method public final start()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
