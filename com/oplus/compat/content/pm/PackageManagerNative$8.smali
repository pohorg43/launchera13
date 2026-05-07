.class Lcom/oplus/compat/content/pm/PackageManagerNative$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/inner/content/pm/PackageManagerWrapper$IPackageDataObserverWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/content/pm/PackageManagerNative;->deleteApplicationCacheFilesAsUser(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/compat/content/pm/IPackageDataObserverNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$observerNative:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/content/pm/IPackageDataObserverNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$8;->val$observerNative:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$8;->val$observerNative:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    return-void
.end method
