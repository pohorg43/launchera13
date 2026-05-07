.class Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/theme/COUIThemeOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTone"
.end annotation


# static fields
.field public static final a:Lcom/coui/appcompat/theme/COUIThemeOverlay;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/theme/COUIThemeOverlay;

    invoke-direct {v0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;-><init>()V

    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;->a:Lcom/coui/appcompat/theme/COUIThemeOverlay;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
