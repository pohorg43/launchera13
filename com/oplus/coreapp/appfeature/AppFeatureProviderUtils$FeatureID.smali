.class public final enum Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

.field public static final enum DYNAMIC_SIMSLOT_1:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

.field public static final enum DYNAMIC_SIMSLOT_2:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

.field public static final enum STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    const-string v1, "STATIC_COMPONENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    new-instance v1, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    const-string v3, "DYNAMIC_SIMSLOT_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->DYNAMIC_SIMSLOT_1:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    new-instance v3, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    const-string v5, "DYNAMIC_SIMSLOT_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->DYNAMIC_SIMSLOT_2:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->$VALUES:[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;
    .registers 2

    const-class v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    return-object p0
.end method

.method public static values()[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;
    .registers 1

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->$VALUES:[Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-virtual {v0}, [Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    return-object v0
.end method
