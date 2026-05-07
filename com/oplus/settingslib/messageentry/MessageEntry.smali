.class public Lcom/oplus/settingslib/messageentry/MessageEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private displayOrder:I

.field private doNotTintIcon:Z

.field private entrancePath:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private moduleResName:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private recommend:I

.field private targetAction:Ljava/lang/String;

.field private targetPackageName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleResName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$000(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->msgId:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$100(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$200(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->titleResName:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$300(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->module:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$400(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->moduleResName:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$500(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)I

    move-result v0

    iput v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->displayOrder:I

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$600(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->pkgName:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$700(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->targetAction:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$800(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->targetPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$900(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->entrancePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$1000(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)I

    move-result v0

    iput v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->recommend:I

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$1100(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->access$1200(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->doNotTintIcon:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;Lcom/oplus/settingslib/messageentry/MessageEntry$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/settingslib/messageentry/MessageEntry;-><init>(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayOrder()I
    .registers 1

    iget p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->displayOrder:I

    return p0
.end method

.method public getEntrancePath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->entrancePath:Ljava/lang/String;

    return-object p0
.end method

.method public getModule()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->module:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleResName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->moduleResName:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecommend()I
    .registers 1

    iget p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->recommend:I

    return p0
.end method

.method public getTargetAction()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->targetAction:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->targetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleResName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->titleResName:Ljava/lang/String;

    return-object p0
.end method

.method public isDoNotTintIcon()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry;->doNotTintIcon:Z

    return p0
.end method
