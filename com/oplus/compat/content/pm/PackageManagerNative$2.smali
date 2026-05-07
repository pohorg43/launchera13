.class Lcom/oplus/compat/content/pm/PackageManagerNative$2;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/content/pm/PackageManagerNative;->createPackageDeleteObserver(Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;)Landroid/content/pm/IPackageDeleteObserver$Stub;
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

    iput-object p1, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$2;->val$observer:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/compat/content/pm/PackageManagerNative$2;->val$observer:Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;->packageDeleted(Ljava/lang/String;I)V

    return-void
.end method
