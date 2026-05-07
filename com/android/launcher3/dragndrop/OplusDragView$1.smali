.class Lcom/android/launcher3/dragndrop/OplusDragView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/OplusDragView;->init(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/OplusDragView;

.field public final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/OplusDragView;Lcom/android/launcher3/Launcher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragView$1;->this$0:Lcom/android/launcher3/dragndrop/OplusDragView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/OplusDragView$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragView$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->notifyDragVisualizeDrop()V

    return-void
.end method
