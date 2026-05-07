.class Lcom/android/launcher3/states/PagePreviewState$1;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/states/PagePreviewState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/states/PagePreviewState;

.field public final synthetic val$centerPages:Lcom/android/launcher3/util/IntSet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/states/PagePreviewState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/util/IntSet;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/states/PagePreviewState$1;->this$0:Lcom/android/launcher3/states/PagePreviewState;

    iput-object p3, p0, Lcom/android/launcher3/states/PagePreviewState$1;->val$centerPages:Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageAlpha(I)F
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/states/PagePreviewState$1;->val$centerPages:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_b

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method
