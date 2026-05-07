.class public Lcom/oplus/settingsdynamic/CategoryBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static sCOLUMNCATRGORY:[Ljava/lang/String;


# instance fields
.field public mAssignment:Ljava/lang/String;

.field public mEnable:I

.field public mKey:Ljava/lang/String;

.field public mOrder:I

.field public mSummary:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mVisible:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const-string v0, "key"

    const-string v1, "order"

    const-string v2, "visible"

    const-string v3, "enable"

    const-string v4, "type"

    const-string v5, "title"

    const-string v6, "summary"

    const-string v7, "assignment"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/settingsdynamic/CategoryBean;->sCOLUMNCATRGORY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mVisible:I

    iput v0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mEnable:I

    iput-object p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mKey:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mOrder:I

    iput-object p3, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mAssignment:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getOrder()I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mOrder:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public isEnable()I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mEnable:I

    return p0
.end method

.method public isVisible()I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mVisible:I

    return p0
.end method

.method public setAssignment(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mAssignment:Ljava/lang/String;

    return-object p0
.end method

.method public setEnable(I)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mEnable:I

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setOrder(I)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mOrder:I

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setVisible(I)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    iput p1, p0, Lcom/oplus/settingsdynamic/CategoryBean;->mVisible:I

    return-object p0
.end method
