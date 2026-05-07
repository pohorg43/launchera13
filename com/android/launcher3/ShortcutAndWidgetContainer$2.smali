.class Lcom/android/launcher3/ShortcutAndWidgetContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/ShortcutAndWidgetContainer;->updateBackgroundForDrag(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/ShortcutAndWidgetContainer;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer$2;->this$0:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-boolean p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer$2;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer$2;->val$show:Z

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer$2;->this$0:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method
