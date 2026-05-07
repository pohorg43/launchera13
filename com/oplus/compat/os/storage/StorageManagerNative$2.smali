.class Lcom/oplus/compat/os/storage/StorageManagerNative$2;
.super Lcom/oplus/inner/os/storage/StorageEventListenerWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/os/storage/StorageManagerNative;->registerListener(Landroid/content/Context;Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/oplus/compat/os/storage/StorageEventListenerNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/os/storage/StorageManagerNative$2;->val$listener:Lcom/oplus/compat/os/storage/StorageEventListenerNative;

    invoke-direct {p0}, Lcom/oplus/inner/os/storage/StorageEventListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/compat/os/storage/StorageManagerNative$2;->val$listener:Lcom/oplus/compat/os/storage/StorageEventListenerNative;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeStateChanged(Lcom/oplus/inner/os/storage/VolumeInfoWrapper;II)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/compat/os/storage/StorageManagerNative$2;->val$listener:Lcom/oplus/compat/os/storage/StorageEventListenerNative;

    new-instance v0, Lcom/oplus/compat/os/storage/VolumeInfoNative;

    invoke-direct {v0, p1}, Lcom/oplus/compat/os/storage/VolumeInfoNative;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->onVolumeStateChanged(Lcom/oplus/compat/os/storage/VolumeInfoNative;II)V

    return-void
.end method
