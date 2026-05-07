.class public final Lcom/android/launcher/pagepreview/CustomLinearLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/pagepreview/CustomLinearLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;->this$0:Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/CustomLinearLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;->this$0:Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;

    invoke-static {p0}, Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;->access$getMMillisecondsPerInch$p(Lcom/android/launcher/pagepreview/CustomLinearLayoutManager;)F

    move-result p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    return p0
.end method
