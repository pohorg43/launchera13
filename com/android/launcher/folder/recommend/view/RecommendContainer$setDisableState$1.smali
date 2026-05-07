.class public final Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/RecommendContainer;->setDisableState(ZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $containerEndAlpha:F

.field public final synthetic $containerStartAlpha:F

.field public final synthetic $settingsIvEndAlpha:F

.field public final synthetic $settingsIvStartAlpha:F

.field private final containerAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final settingsIvAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendContainer;


# direct methods
.method public constructor <init>(FFFFLcom/android/launcher/folder/recommend/view/RecommendContainer;)V
    .registers 14

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->$containerStartAlpha:F

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->$containerEndAlpha:F

    iput p3, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->$settingsIvStartAlpha:F

    iput p4, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->$settingsIvEndAlpha:F

    iput-object p5, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance p5, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v7, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x43960000  # 300.0f

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object p5, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->containerAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance p1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    move-object v0, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->settingsIvAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getContainerAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->containerAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getSettingsIvAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->settingsIvAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->containerAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->access$getMRecommendSettingsIv$p(Lcom/android/launcher/folder/recommend/view/RecommendContainer;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_19

    :cond_12
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;->settingsIvAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_19
    return-void
.end method
