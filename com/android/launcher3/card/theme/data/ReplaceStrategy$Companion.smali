.class public final Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/theme/data/ReplaceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;

.field public static final CARD_TO_CARD:Ljava/lang/String; = "card#card"

.field public static final CARD_TO_WIDGET:Ljava/lang/String; = "card#appwidget"

.field public static final WIDGET_TO_CARD:Ljava/lang/String; = "appwidget#card"

.field public static final WIDGET_TO_WIDET:Ljava/lang/String; = "appwidget#appwidget"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;->$$INSTANCE:Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
