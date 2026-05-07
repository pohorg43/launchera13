.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->access$000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;

    sget-object v1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, v0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08079e

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;

    iget v5, v4, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    iget v4, v4, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/common/util/BitmapUtils;->decodeStreamBitmapFromResourceID(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->access$002(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;)Lcom/android/launcher/views/RoundImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;

    iget-object v2, v2, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->access$000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3e
    return-void
.end method
