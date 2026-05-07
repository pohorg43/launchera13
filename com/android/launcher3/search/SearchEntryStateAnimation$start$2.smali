.class public final Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/search/SearchEntryStateAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $animInterpolator:Landroid/view/animation/Interpolator;

.field private final mIndicatorAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final mSearchEntryAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final mSearchTextScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field public final synthetic this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroid/view/animation/Interpolator;)V
    .registers 12

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    iput-object p2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->$animInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMToSearchEntry$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x43af0000  # 350.0f

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_2a

    :cond_1c
    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43480000  # 200.0f

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_2a
    iput-object v8, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mSearchEntryAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMToSearchEntry$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const v2, 0x3f666666  # 0.9f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x43960000  # 300.0f

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_53

    :cond_43
    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3f666666  # 0.9f

    const/4 v4, 0x0

    const/high16 v5, 0x43960000  # 300.0f

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_53
    iput-object v8, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mSearchTextScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMToSearchEntry$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x437a0000  # 250.0f

    move-object v0, v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_78

    :cond_6a
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x43960000  # 300.0f

    move-object v0, v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_78
    iput-object v7, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mIndicatorAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getMIndicatorAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mIndicatorAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getMSearchEntryAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mSearchEntryAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getMSearchTextScale()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mSearchTextScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMSearchEntryView$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mSearchEntryAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mIndicatorAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMSearchEntryView$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMSearchEntryView$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;->mSearchTextScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, p0}, Lcom/android/launcher3/search/SearchEntryView;->setContentScale(F)V

    return-void
.end method
