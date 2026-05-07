.class Lcom/android/launcher/guide/SlideSlipGuidePage$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/widget/OplusViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/SlideSlipGuidePage;->initViewPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/SlideSlipGuidePage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$3;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$3;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {v0, p1}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$300(Lcom/android/launcher/guide/SlideSlipGuidePage;I)V

    iget-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$3;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {v0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$100(Lcom/android/launcher/guide/SlideSlipGuidePage;)Lcom/android/launcher/guide/BaseSlideGuideAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->onPageSelected(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$3;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {v0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$400(Lcom/android/launcher/guide/SlideSlipGuidePage;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$3;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {p0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$100(Lcom/android/launcher/guide/SlideSlipGuidePage;)Lcom/android/launcher/guide/BaseSlideGuideAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/widget/OplusPagerAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_24

    const/4 p0, 0x4

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
