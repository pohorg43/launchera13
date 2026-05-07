.class public final synthetic Lcom/android/wm/shell/stagesplit/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

.field public final synthetic b:Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/l;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/l;->b:Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

    iput-object p3, p0, Lcom/android/wm/shell/stagesplit/l;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/l;->a:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/l;->b:Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/l;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;->b(Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method
