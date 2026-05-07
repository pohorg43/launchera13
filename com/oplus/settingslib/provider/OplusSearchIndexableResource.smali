.class public Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;
.super Lcom/oplus/settingslib/provider/OplusSearchIndexableData;
.source ""


# instance fields
.field public xmlResId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;-><init>()V

    iput p1, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->rank:I

    iput p2, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;->xmlResId:I

    iput-object p3, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->className:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->iconResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "SearchIndexableResource["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    const-string v3, "xmlResId: "

    invoke-static {v0, v1, v2, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;->xmlResId:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
