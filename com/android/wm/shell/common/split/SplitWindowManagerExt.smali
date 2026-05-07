.class Lcom/android/wm/shell/common/split/SplitWindowManagerExt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManagerExt;->mEnable:Z

    return-void
.end method


# virtual methods
.method public onCreateDividerView(Landroid/content/Context;)Lcom/android/wm/shell/common/split/DividerView;
    .registers 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget p1, Lcom/android/wm/shell/R$layout;->split_divider_tb:I

    goto :goto_f

    :cond_d
    sget p1, Lcom/android/wm/shell/R$layout;->split_divider_lr:I

    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/DividerView;

    return-object p0
.end method
