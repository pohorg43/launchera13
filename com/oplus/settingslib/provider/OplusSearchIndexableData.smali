.class public abstract Lcom/oplus/settingslib/provider/OplusSearchIndexableData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public className:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public enabled:Z

.field public iconResId:I

.field public intentAction:Ljava/lang/String;

.field public intentTargetClass:Ljava/lang/String;

.field public intentTargetPackage:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public locale:Ljava/util/Locale;

.field public packageName:Ljava/lang/String;

.field public rank:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->userId:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->enabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "SearchIndexableData[context: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "locale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->enabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rank: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->rank:I

    const-string v3, "key: "

    invoke-static {v0, v2, v1, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->key:Ljava/lang/String;

    const-string v3, "userId: "

    invoke-static {v0, v2, v1, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->userId:I

    const-string v3, "className: "

    invoke-static {v0, v2, v1, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->className:Ljava/lang/String;

    const-string v3, "packageName: "

    invoke-static {v0, v2, v1, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->packageName:Ljava/lang/String;

    const-string v3, "iconResId: "

    invoke-static {v0, v2, v1, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->iconResId:I

    const-string v3, "intentAction: "

    invoke-static {v0, v2, v1, v3}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->intentAction:Ljava/lang/String;

    const-string v3, "intentTargetPackage: "

    invoke-static {v0, v2, v1, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const-string v3, "intentTargetClass: "

    invoke-static {v0, v2, v1, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
