.class Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/OplusWidgetsFullSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/OplusCoordinatorLayout;

    invoke-static {v0, v1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$002(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Lcom/android/launcher3/views/OplusCoordinatorLayout;)Lcom/android/launcher3/views/OplusCoordinatorLayout;

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    iget-object v1, v0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$200(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Lcom/android/launcher/togglebar/ToggleBarManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$102(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->openPanel(Z)V

    return-void
.end method
