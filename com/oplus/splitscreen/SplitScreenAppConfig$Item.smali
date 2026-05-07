.class Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenAppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final mAttrPkgName:Ljava/lang/String;

.field private final mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->mTagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->mAttrPkgName:Ljava/lang/String;

    return-void
.end method

.method public static getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->mTagName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->mAttrPkgName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
