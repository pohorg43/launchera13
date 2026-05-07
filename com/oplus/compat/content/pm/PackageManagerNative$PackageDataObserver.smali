.class Lcom/oplus/compat/content/pm/PackageManagerNative$PackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/content/pm/PackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageDataObserver"
.end annotation


# instance fields
.field private final mObserver:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;


# direct methods
.method private constructor <init>(Lcom/oplus/compat/content/pm/IPackageDataObserverNative;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$PackageDataObserver;->mObserver:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compat/content/pm/IPackageDataObserverNative;Lcom/oplus/compat/content/pm/PackageManagerNative$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/compat/content/pm/PackageManagerNative$PackageDataObserver;-><init>(Lcom/oplus/compat/content/pm/IPackageDataObserverNative;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$PackageDataObserver;->mObserver:Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method
