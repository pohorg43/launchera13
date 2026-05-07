.class public abstract Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/AbsBranchUIManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager$Companion;

.field public static final RES_TYPE_ALL_APPS_SEARCH_BAR_HINT:I = 0x5

.field public static final RES_TYPE_BRANCH_SEARCH_EMPTY_GP:I = 0x9

.field public static final RES_TYPE_BRANCH_SEARCH_EMPTY_OPLUS_MARKET:I = 0x8

.field public static final RES_TYPE_BRANCH_SEARCH_NOTIFICATION:I = 0x7

.field public static final RES_TYPE_BRANCH_USER_PROTOCOL:I = 0x2

.field public static final RES_TYPE_PANEL_USER_AGREEMENT_TITLE:I = 0x6

.field public static final RES_TYPE_PERSONALIZE_SEARCH:I = 0x4

.field public static final RES_TYPE_USER_AGREEMENT_TITLE:I = 0x1

.field public static final RES_TYPE_USER_PRIVACY_POLICY:I = 0x3


# instance fields
.field private mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->Companion:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;-><init>(Lcom/android/launcher3/allapps/SearchUiManager;Lcom/android/launcher3/allapps/branch/AbsBranchResponse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/SearchUiManager;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;-><init>(Lcom/android/launcher3/allapps/SearchUiManager;Lcom/android/launcher3/allapps/branch/AbsBranchResponse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/SearchUiManager;Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/SearchUiManager;",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/SearchUiManager;Lcom/android/launcher3/allapps/branch/AbsBranchResponse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;-><init>(Lcom/android/launcher3/allapps/SearchUiManager;Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V

    return-void
.end method


# virtual methods
.method public abstract branchRefillAdapterItems(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract checkDeviceProtectTimeLimit()V
.end method

.method public abstract enableSearchNotification(Landroid/content/Context;Z)V
.end method

.method public abstract enterDrawer()V
.end method

.method public abstract exitDrawer()V
.end method

.method public final getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    return-object p0
.end method

.method public final getMSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    return-object p0
.end method

.method public getResourceId(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public abstract initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;",
            "Lcom/android/launcher3/allapps/OplusAllAppsContainerView;",
            ")V"
        }
    .end annotation
.end method

.method public abstract needKeyboardFromNotification()Z
.end method

.method public abstract onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V
.end method

.method public abstract onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
.end method

.method public abstract onCreateViewHolderBubbleTv(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILandroid/view/View$OnFocusChangeListener;Landroid/view/View$OnLongClickListener;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
.end method

.method public abstract openLauncherAllAppMode()V
.end method

.method public abstract preMeasureViews(Landroid/util/SparseIntArray;I)V
.end method

.method public abstract redDotEnable()Z
.end method

.method public abstract refillAdapterItemsAndUpdate()V
.end method

.method public abstract refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V
.end method

.method public abstract refreshListDot(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract refreshSaveUserPageStatus(Z)V
.end method

.method public abstract saveRunningTime()V
.end method

.method public final setMBranchResponse(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    return-void
.end method

.method public final setMSearchUiManager(Lcom/android/launcher3/allapps/SearchUiManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    return-void
.end method

.method public abstract setNotificationSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
.end method

.method public abstract setReIntoDrawer(Z)V
.end method

.method public abstract setTextViewRedDot(Landroid/widget/TextView;)V
.end method

.method public abstract showKeyboard(F)V
.end method
