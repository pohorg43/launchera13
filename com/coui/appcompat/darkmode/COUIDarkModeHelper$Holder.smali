.class Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static a:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;-><init>()V

    sput-object v0, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$Holder;->a:Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
