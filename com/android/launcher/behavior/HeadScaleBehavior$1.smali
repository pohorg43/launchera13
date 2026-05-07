.class Lcom/android/launcher/behavior/HeadScaleBehavior$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/behavior/HeadScaleBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/behavior/HeadScaleBehavior;


# direct methods
.method public constructor <init>(Lcom/android/launcher/behavior/HeadScaleBehavior;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior$1;->this$0:Lcom/android/launcher/behavior/HeadScaleBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior$1;->this$0:Lcom/android/launcher/behavior/HeadScaleBehavior;

    invoke-static {p1}, Lcom/android/launcher/behavior/HeadScaleBehavior;->access$000(Lcom/android/launcher/behavior/HeadScaleBehavior;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior$1;->this$0:Lcom/android/launcher/behavior/HeadScaleBehavior;

    invoke-static {p0}, Lcom/android/launcher/behavior/HeadScaleBehavior;->access$100(Lcom/android/launcher/behavior/HeadScaleBehavior;)V

    return-void
.end method
