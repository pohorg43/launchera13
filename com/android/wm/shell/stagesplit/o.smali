.class public final synthetic Lcom/android/wm/shell/stagesplit/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/o;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

    iput p2, p0, Lcom/android/wm/shell/stagesplit/o;->b:I

    iput-boolean p3, p0, Lcom/android/wm/shell/stagesplit/o;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/o;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

    iget v1, p0, Lcom/android/wm/shell/stagesplit/o;->b:I

    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/o;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;->a(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;IZ)V

    return-void
.end method
