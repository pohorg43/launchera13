.class public final synthetic Lcom/android/launcher3/model/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/model/a0;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/a0;->b:Landroid/os/UserHandle;

    return-void

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/a0;->b:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/a0;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/model/a0;->b:Landroid/os/UserHandle;

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/FirstScreenBroadcast;->b(Landroid/os/UserHandle;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0

    :pswitch_f  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/a0;->b:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->a(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z

    move-result p0

    return p0

    :goto_18
    iget-object p0, p0, Lcom/android/launcher3/model/a0;->b:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->m(Landroid/os/UserHandle;Lcom/android/launcher3/util/ComponentKey;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
