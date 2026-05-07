.class public Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settingslib/messageentry/MessageEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->msgId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)I
    .registers 1

    iget p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->recommend:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->doNotTintIcon:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->titleResName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->module:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->moduleResName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)I
    .registers 1

    iget p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->displayOrder:I

    return p0
.end method

.method public static synthetic access$600(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->targetAction:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->targetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->entrancePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/oplus/settingslib/messageentry/MessageEntry;
    .registers 3

    new-instance v0, Lcom/oplus/settingslib/messageentry/MessageEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/settingslib/messageentry/MessageEntry;-><init>(Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;Lcom/oplus/settingslib/messageentry/MessageEntry$1;)V

    return-object v0
.end method

.method public data(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public displayOrder(I)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->displayOrder:I

    return-object p0
.end method

.method public doNotTintIcon(Z)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->doNotTintIcon:Z

    return-object p0
.end method

.method public entrancePath(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->entrancePath:Ljava/lang/String;

    return-object p0
.end method

.method public module(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->module:Ljava/lang/String;

    return-object p0
.end method

.method public moduleResName(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->moduleResName:Ljava/lang/String;

    return-object p0
.end method

.method public recommend(Z)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->recommend:I

    return-object p0
.end method

.method public targetAction(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->targetAction:Ljava/lang/String;

    return-object p0
.end method

.method public targetPackageName(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->targetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public titleResName(Ljava/lang/String;)Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingslib/messageentry/MessageEntry$Builder;->titleResName:Ljava/lang/String;

    return-object p0
.end method
