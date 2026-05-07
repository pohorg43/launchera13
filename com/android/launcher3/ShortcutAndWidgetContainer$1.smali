.class Lcom/android/launcher3/ShortcutAndWidgetContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field public final synthetic val$scaleAndCenterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer$1;->this$0:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer$1;->val$scaleAndCenterRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer$1;->val$scaleAndCenterRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
