.class Lcom/android/launcher/guide/GuidePageManager$4;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/GuidePageManager;->setColorGuidePagerCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$600(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$600(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0, p1}, Lcom/android/launcher/guide/GuidePageManager;->access$700(Lcom/android/launcher/guide/GuidePageManager;I)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePageManager;->access$600(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePageManager;->access$800(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/guide/GuidePagerAdapter;

    move-result-object v0

    const-string v1, "GuidePageManager"

    if-nez v0, :cond_21

    const-string p0, "mGuidePagerAdapter == null,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePageManager;->access$800(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/guide/GuidePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_35

    const-string/jumbo p0, "position >= mGuidePagerAdapter.getGuidImageView().length, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePageManager;->access$800(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/guide/GuidePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePageManager;->access$800(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/guide/GuidePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$4;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$800(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/guide/GuidePagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_61
    return-void
.end method
