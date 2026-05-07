.class public final synthetic Lcom/android/launcher3/model/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/UserHandle;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/b0;->b:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/model/b0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/b0;->b:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/model/b0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/b0;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/b0;->b:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/model/b0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->d(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z

    move-result p0

    return p0

    :goto_13
    iget-object v0, p0, Lcom/android/launcher3/model/b0;->b:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/model/b0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->l(Landroid/os/UserHandle;Landroid/content/ComponentName;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
