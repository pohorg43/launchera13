.class public final synthetic Lcom/android/wm/shell/stagesplit/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/m;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

    iput p2, p0, Lcom/android/wm/shell/stagesplit/m;->b:I

    iput p3, p0, Lcom/android/wm/shell/stagesplit/m;->c:I

    iput p4, p0, Lcom/android/wm/shell/stagesplit/m;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/m;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

    iget v1, p0, Lcom/android/wm/shell/stagesplit/m;->b:I

    iget v2, p0, Lcom/android/wm/shell/stagesplit/m;->c:I

    iget p0, p0, Lcom/android/wm/shell/stagesplit/m;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;->b(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;III)V

    return-void
.end method
