.class public final Lcom/android/launcher3/card/theme/data/ElementType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/theme/data/ElementType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/launcher3/card/theme/data/ElementType$Companion;

.field public static final CARD:Ljava/lang/String; = "card"

.field public static final WIDGET:Ljava/lang/String; = "appwidget"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/theme/data/ElementType$Companion;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/data/ElementType$Companion;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/ElementType$Companion;->$$INSTANCE:Lcom/android/launcher3/card/theme/data/ElementType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
