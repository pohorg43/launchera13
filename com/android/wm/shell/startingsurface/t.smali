.class public final synthetic Lcom/android/wm/shell/startingsurface/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/util/MergedConfiguration;

.field public final synthetic b:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/util/MergedConfiguration;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/t;->a:Landroid/util/MergedConfiguration;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/t;->b:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    iput-boolean p3, p0, Lcom/android/wm/shell/startingsurface/t;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/t;->a:Landroid/util/MergedConfiguration;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/t;->b:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/t;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->a(Landroid/util/MergedConfiguration;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Z)V

    return-void
.end method
