.class public final Lcom/oplus/backup/sdk/common/utils/Constants$LoadBundle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/common/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadBundle"
.end annotation


# static fields
.field public static final BR_TYPE:Ljava/lang/String; = "br_type"

.field public static final BR_TYPE_BACKUP:I = 0x0

.field public static final BR_TYPE_RESTORE:I = 0x1

.field public static final PLUGINS:Ljava/lang/String; = "plugins"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
