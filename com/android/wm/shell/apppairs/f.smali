.class public final synthetic Lcom/android/wm/shell/apppairs/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

.field public final synthetic b:[Z

.field public final synthetic c:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic d:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;[ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/f;->a:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

    iput-object p2, p0, Lcom/android/wm/shell/apppairs/f;->b:[Z

    iput-object p3, p0, Lcom/android/wm/shell/apppairs/f;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p4, p0, Lcom/android/wm/shell/apppairs/f;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/f;->a:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/f;->b:[Z

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/f;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/f;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;->a(Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;[ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
