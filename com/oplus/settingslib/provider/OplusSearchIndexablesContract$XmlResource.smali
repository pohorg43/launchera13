.class public final Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract$XmlResource;
.super Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract$BaseColumns;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlResource"
.end annotation


# static fields
.field public static final COLUMN_XML_RESID:Ljava/lang/String; = "xmlResId"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_xml_res"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract$BaseColumns;-><init>(Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract$1;)V

    return-void
.end method
