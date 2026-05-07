.class Lcom/oplus/compat/content/pm/PackageManagerNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/content/pm/PackageManagerNative;->deletePackage(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$observer:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$1;->val$observer:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_12

    const-string p0, "onReceive: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "PackageManagerNative"

    invoke-static {p1, p0, v0}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$1;->val$observer:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "returnCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;->packageDeleted(Ljava/lang/String;I)V

    return-void
.end method
