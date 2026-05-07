.class Lcom/android/launcher3/views/OplusWidgetsFullSheet$3;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getBehavior()V
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

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$3;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "BottomSheetCallback-onStateChanged, newState = "

    const-string v0, "OplusWidgetsFullSheet"

    invoke-static {p1, p2, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    if-eq p2, p1, :cond_b

    goto :goto_10

    :cond_b
    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$3;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-static {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$500(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V

    :goto_10
    return-void
.end method
