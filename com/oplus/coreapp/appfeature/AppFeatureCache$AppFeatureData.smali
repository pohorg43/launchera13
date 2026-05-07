.class public Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/coreapp/appfeature/AppFeatureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppFeatureData"
.end annotation


# instance fields
.field private _id:Ljava/lang/Integer;

.field private featureName:Ljava/lang/String;

.field private jasonStr:Ljava/lang/String;

.field private parameters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->_id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->featureName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->parameters:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->jasonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFeatureName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->featureName:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->_id:Ljava/lang/Integer;

    return-object p0
.end method

.method public getJasonStr()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->jasonStr:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->parameters:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "AppFeatureData{_id=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "featureName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->featureName:Ljava/lang/String;

    const-string v3, ", parameters=\'"

    invoke-static {v0, v2, v1, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->parameters:Ljava/lang/String;

    const-string v3, ", jasonStr=\'"

    invoke-static {v0, v2, v1, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->jasonStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
