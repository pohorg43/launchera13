.class Lcom/android/launcher3/views/OplusClipIconView$2;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusClipIconView;->setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusClipIconView;

.field public final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusClipIconView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    iput-object p2, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getClipIconRadius()[F

    move-result-object p1

    if-nez p1, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    iget-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/android/launcher3/views/OplusClipIconView;->access$000(Lcom/android/launcher3/views/OplusClipIconView;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07021f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_2d

    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView$2;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardClipPath([FLandroid/graphics/Rect;)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    :goto_2d
    return-void
.end method
