.class public Lcom/oplus/compatui/Entity;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mConfig:Ljava/lang/String;

.field public mCustomConfigBody:Ljava/lang/String;

.field public mInstalled:I

.field public mMode:I

.field public mPackageName:Ljava/lang/String;

.field public mSources:I

.field public mStatus:I

.field public mUseFunction:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compatui/Entity;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/compatui/Entity;->mUseFunction:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/compatui/Entity;->mConfig:Ljava/lang/String;

    iput p8, p0, Lcom/oplus/compatui/Entity;->mSources:I

    iput p3, p0, Lcom/oplus/compatui/Entity;->mStatus:I

    iput p7, p0, Lcom/oplus/compatui/Entity;->mMode:I

    iput-object p6, p0, Lcom/oplus/compatui/Entity;->mVersion:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/compatui/Entity;->mInstalled:I

    const-string p1, ""

    iput-object p1, p0, Lcom/oplus/compatui/Entity;->mCustomConfigBody:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compatui/Entity;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/compatui/Entity;->mUseFunction:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/compatui/Entity;->mConfig:Ljava/lang/String;

    iput p8, p0, Lcom/oplus/compatui/Entity;->mSources:I

    iput p3, p0, Lcom/oplus/compatui/Entity;->mStatus:I

    iput p7, p0, Lcom/oplus/compatui/Entity;->mMode:I

    iput-object p6, p0, Lcom/oplus/compatui/Entity;->mVersion:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/compatui/Entity;->mInstalled:I

    iput-object p9, p0, Lcom/oplus/compatui/Entity;->mCustomConfigBody:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compatui/Entity;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/compatui/Entity;->mUseFunction:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/compatui/Entity;->mConfig:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/compatui/Entity;->mSources:I

    iput p5, p0, Lcom/oplus/compatui/Entity;->mStatus:I

    iput p6, p0, Lcom/oplus/compatui/Entity;->mMode:I

    iput-object p7, p0, Lcom/oplus/compatui/Entity;->mCustomConfigBody:Ljava/lang/String;

    iput-object p8, p0, Lcom/oplus/compatui/Entity;->mVersion:Ljava/lang/String;

    iput p9, p0, Lcom/oplus/compatui/Entity;->mInstalled:I

    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/Entity;->mConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomConfig()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/Entity;->mCustomConfigBody:Ljava/lang/String;

    return-object p0
.end method

.method public getInstalled()I
    .registers 1

    iget p0, p0, Lcom/oplus/compatui/Entity;->mInstalled:I

    return p0
.end method

.method public getMode()I
    .registers 1

    iget p0, p0, Lcom/oplus/compatui/Entity;->mMode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/Entity;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSources()I
    .registers 1

    iget p0, p0, Lcom/oplus/compatui/Entity;->mSources:I

    return p0
.end method

.method public getStatus()I
    .registers 1

    iget p0, p0, Lcom/oplus/compatui/Entity;->mStatus:I

    return p0
.end method

.method public getUseFunction()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/Entity;->mUseFunction:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/Entity;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Entity{mPackageName="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/Entity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUseFunction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compatui/Entity;->mUseFunction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compatui/Entity;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/compatui/Entity;->mSources:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/compatui/Entity;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/compatui/Entity;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomConfigBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compatui/Entity;->mCustomConfigBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compatui/Entity;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/compatui/Entity;->mInstalled:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
