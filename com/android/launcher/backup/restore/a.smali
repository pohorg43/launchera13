.class public final synthetic Lcom/android/launcher/backup/restore/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/backup/restore/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/backup/restore/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/backup/restore/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/backup/restore/a;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/backup/restore/a;->f:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/android/launcher/backup/restore/a;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/backup/restore/AppRestoreGuardian;ZLandroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/CompletableFuture;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/backup/restore/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/backup/restore/a;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/backup/restore/a;->c:Z

    iput-object p3, p0, Lcom/android/launcher/backup/restore/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/backup/restore/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher/backup/restore/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/backup/restore/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/backup/restore/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/backup/restore/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/backup/restore/a;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/launcher/backup/restore/a;->c:Z

    iput-object p5, p0, Lcom/android/launcher/backup/restore/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/launcher/backup/restore/a;->a:I

    packed-switch v0, :pswitch_data_48

    goto :goto_32

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/backup/restore/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher/backup/restore/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher/backup/restore/a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher/backup/restore/a;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/android/launcher/backup/restore/a;->c:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandItemUpdateHelper;->b(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    :pswitch_1c  #0x0
    iget-object v0, p0, Lcom/android/launcher/backup/restore/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    iget-boolean v1, p0, Lcom/android/launcher/backup/restore/a;->c:Z

    iget-object v2, p0, Lcom/android/launcher/backup/restore/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher/backup/restore/a;->e:Ljava/lang/Object;

    check-cast v3, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher/backup/restore/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->a(Lcom/android/launcher/backup/restore/AppRestoreGuardian;ZLandroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/CompletableFuture;)V

    return-void

    :goto_32
    iget-object v0, p0, Lcom/android/launcher/backup/restore/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/ImageActionsApi;

    iget-object v1, p0, Lcom/android/launcher/backup/restore/a;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher/backup/restore/a;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/launcher/backup/restore/a;->c:Z

    iget-object p0, p0, Lcom/android/launcher/backup/restore/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/ImageActionsApi;->a(Lcom/android/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;ZLjava/lang/Runnable;)V

    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
