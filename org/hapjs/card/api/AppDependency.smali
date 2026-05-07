.class public Lorg/hapjs/card/api/AppDependency;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mMinVersion:I

.field private final mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hapjs/card/api/AppDependency;->mPkg:Ljava/lang/String;

    iput p2, p0, Lorg/hapjs/card/api/AppDependency;->mMinVersion:I

    return-void
.end method


# virtual methods
.method public getMinVersion()I
    .registers 1

    iget p0, p0, Lorg/hapjs/card/api/AppDependency;->mMinVersion:I

    return p0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/hapjs/card/api/AppDependency;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "[mPkg: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/hapjs/card/api/AppDependency;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMinVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/hapjs/card/api/AppDependency;->mMinVersion:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
