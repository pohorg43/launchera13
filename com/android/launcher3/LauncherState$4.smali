.class Lcom/android/launcher3/LauncherState$4;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/LauncherState;

.field public final synthetic val$centerPage:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherState;Landroid/view/animation/Interpolator;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/LauncherState$4;->this$0:Lcom/android/launcher3/LauncherState;

    iput p3, p0, Lcom/android/launcher3/LauncherState$4;->val$centerPage:I

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageAlpha(I)F
    .registers 2

    iget p0, p0, Lcom/android/launcher3/LauncherState$4;->val$centerPage:I

    if-eq p1, p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_8
    return p0
.end method
