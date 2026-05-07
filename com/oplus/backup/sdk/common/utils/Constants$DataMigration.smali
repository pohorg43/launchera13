.class public final Lcom/oplus/backup/sdk/common/utils/Constants$DataMigration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/common/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataMigration"
.end annotation


# static fields
.field public static final MSG_FROM_CLIENT:I = 0x1

.field public static final MSG_TO_CLIENT:I = 0x2

.field public static final SOURCE_FOLDERS:Ljava/lang/String; = "source_folders"

.field public static final SPLIT_TAG:Ljava/lang/String; = ";"

.field public static final TATGET_FOLDERS:Ljava/lang/String; = "target_folders"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
