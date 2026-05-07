.class Lcom/android/launcher/guide/SlideSlipGuidePage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/SlideSlipGuidePage;->initAdapter(I)V
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

    iput-object p1, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$1;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const-string p1, "SlidSlipGuidePage"

    const-string v0, "initBtn mActionOkBtn onClick"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$1;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {p1}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$000(Lcom/android/launcher/guide/SlideSlipGuidePage;)Lcom/oplus/widget/OplusViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/widget/OplusViewPager;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$1;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {v0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$100(Lcom/android/launcher/guide/SlideSlipGuidePage;)Lcom/android/launcher/guide/BaseSlideGuideAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/widget/OplusPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$1;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {p1}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$200(Lcom/android/launcher/guide/SlideSlipGuidePage;)Lcom/android/launcher/guide/SlideSlipGuidePage$GestureGuideListener;

    move-result-object p1

    if-eqz p1, :cond_3c

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$1;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {p0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$200(Lcom/android/launcher/guide/SlideSlipGuidePage;)Lcom/android/launcher/guide/SlideSlipGuidePage$GestureGuideListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher/guide/SlideSlipGuidePage$GestureGuideListener;->onGestureGuideFinished()V

    goto :goto_3c

    :cond_31
    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuidePage$1;->this$0:Lcom/android/launcher/guide/SlideSlipGuidePage;

    invoke-static {p0}, Lcom/android/launcher/guide/SlideSlipGuidePage;->access$000(Lcom/android/launcher/guide/SlideSlipGuidePage;)Lcom/oplus/widget/OplusViewPager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/widget/OplusViewPager;->setCurrentItem(I)V

    :cond_3c
    :goto_3c
    return-void
.end method
