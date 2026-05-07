.class public final synthetic Lcom/android/wm/shell/stagesplit/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/n;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

    iput p2, p0, Lcom/android/wm/shell/stagesplit/n;->b:I

    iput p3, p0, Lcom/android/wm/shell/stagesplit/n;->c:I

    iput p4, p0, Lcom/android/wm/shell/stagesplit/n;->d:I

    iput-boolean p5, p0, Lcom/android/wm/shell/stagesplit/n;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/n;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;

    iget v1, p0, Lcom/android/wm/shell/stagesplit/n;->b:I

    iget v2, p0, Lcom/android/wm/shell/stagesplit/n;->c:I

    iget v3, p0, Lcom/android/wm/shell/stagesplit/n;->d:I

    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/n;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;->c(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl$1;IIIZ)V

    return-void
.end method
